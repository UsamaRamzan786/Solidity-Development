// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.26;

contract TryCatch {
    error CustomError(string);
    function throwError() public pure {
        // require(false, "I am sorry but I can not perform this function");
        // assert(false);
        revert CustomError("I am sorry but I can not perform this function");
    }
}

contract CatchException {

    event LogingError(string reason);
    event LogingErrorCode(uint code);
    event CustomError(bytes custom);

    TryCatch tryCatch = new TryCatch();

    function catchError() public {
        try tryCatch.throwError() {

        } catch Error(string memory message) {
            emit LogingError(message);
        } catch Panic(uint code) {
            emit LogingErrorCode(code);
        } catch (bytes memory message){
            emit CustomError(message);
        }
    }
}
