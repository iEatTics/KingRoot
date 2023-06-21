.class public Loicq/wlogin_sdk/b/cc;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x193

    iput v0, p0, Loicq/wlogin_sdk/b/cc;->h:I

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [B

    :cond_0
    iget v0, p0, Loicq/wlogin_sdk/b/cc;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/cc;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/b/cc;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cc;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cc;->b()[B

    move-result-object v0

    return-object v0
.end method
