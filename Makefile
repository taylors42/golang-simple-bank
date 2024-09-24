postgres:
	docker run --name postgres12 -p 5432:532 -e POSTGRES_USER=root -e POSTGRES=1234 -d postgres:12-alpine
createdb:
	docker exec -it postgres createdb --username=root --owner=root simple_bank
dropdb:
	docker exec -it postgres dropdb simple_bank

.PHONY: createdb
