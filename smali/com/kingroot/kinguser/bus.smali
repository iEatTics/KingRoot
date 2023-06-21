.class public Lcom/kingroot/kinguser/bus;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static kq(I)B
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    .line 48
    neg-int v1, p0

    rem-int/lit8 v1, v1, 0x64

    neg-int v1, v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 49
    const/4 v0, 0x2

    .line 65
    :goto_0
    return v0

    .line 51
    :cond_0
    neg-int v1, p0

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    neg-int v1, v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 57
    :sswitch_0
    const/4 v0, 0x0

    .line 58
    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        -0x1388 -> :sswitch_0
        -0xfa0 -> :sswitch_0
        -0xbb8 -> :sswitch_0
        -0x7d0 -> :sswitch_0
        -0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
