open util/boolean


sig User {}

sig Group{
    , admins: some User
}

sig Room {
    , admins: some User
}

sig Tag {}

pred at_least_one_event {
    some Event
}

sig Event {
    , admins: some User
    , group: one Group
    , room: one Room
    , tags: set Tag
    , allowTogether: Bool
}



run {}
