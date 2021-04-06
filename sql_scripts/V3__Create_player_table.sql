CREATE TABLE player
(
    id         uuid                  DEFAULT uuid_generate_v4() PRIMARY KEY,
    name       VARCHAR(150) NOT NULL,
    image      VARCHAR(250) NOT NULL,
    created_at TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

CREATE TRIGGER set_player_updated_at
    BEFORE UPDATE ON player
    FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();