.class public Lcom/kingroot/kinguser/beh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/beh$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/beh$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/beh;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public static Zo()Lcom/kingroot/kinguser/bea;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/beh;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bea;

    return-object v0
.end method

.method public static c(Lcom/kingroot/kinguser/bec;)Lcom/kingroot/kinguser/bea$a;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/kingroot/kinguser/beh$2;->bla:[I

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bec;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    sget-object v0, Lcom/kingroot/kinguser/bea$a;->bkj:Lcom/kingroot/kinguser/bea$a;

    goto :goto_0

    .line 71
    :pswitch_1
    sget-object v0, Lcom/kingroot/kinguser/bea$a;->bki:Lcom/kingroot/kinguser/bea$a;

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/bec;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/kingroot/kinguser/beh$2;->blb:[I

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    sget-object v0, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v0, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
