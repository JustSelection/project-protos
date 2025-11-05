PROTOS := proto/users/user.proto proto/tasks/task.proto
OUT_DIR := .

generate:
	@echo "Generating protobuf code..."
	protoc \
	  --go_out=$(OUT_DIR) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
	  $(PROTOS)

clean:
	@echo "Cleaning generated protobuf files..."
	find . -name "*pb.go" -delete