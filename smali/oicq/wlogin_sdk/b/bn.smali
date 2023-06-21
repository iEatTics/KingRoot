.class public Loicq/wlogin_sdk/b/bn;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x17a

    iput v0, p0, Loicq/wlogin_sdk/b/bn;->h:I

    return-void
.end method


# virtual methods
.method public a(J)[B
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    new-array v1, v2, [B

    invoke-static {v1, v0, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    iget v0, p0, Loicq/wlogin_sdk/b/bn;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/bn;->b(I)V

    invoke-virtual {p0, v1, v2}, Loicq/wlogin_sdk/b/bn;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bn;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bn;->b()[B

    move-result-object v0

    return-object v0
.end method
