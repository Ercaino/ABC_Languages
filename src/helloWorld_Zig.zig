// Hello World in Zig
//
// Requirements:
// - Zig compiler (https://ziglang.org/)
//
// Execution:
// - Run: zig run helloWorld_Zig.zig
// - Build: zig build-exe helloWorld_Zig.zig

const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"World"});
}
