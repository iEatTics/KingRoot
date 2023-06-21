.class public final Lcom/kingroot/kinguser/ez;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static D(I)Lcom/kingroot/kinguser/ew;
    .locals 1

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 30
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/ey;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ey;-><init>()V

    goto :goto_0

    .line 26
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/ex;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ex;-><init>()V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x6163e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
