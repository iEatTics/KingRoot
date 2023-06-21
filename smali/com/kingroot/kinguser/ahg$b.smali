.class public Lcom/kingroot/kinguser/ahg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 1

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ahh;->wY()Lcom/kingroot/kinguser/ahh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahh;->refresh()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 117
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 111
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ahh;->wY()Lcom/kingroot/kinguser/ahh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahh;->wU()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ahh;->wY()Lcom/kingroot/kinguser/ahh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahh;->wV()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/ahh;->wY()Lcom/kingroot/kinguser/ahh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahh;->wW()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
