.class public Lcom/kingroot/kinguser/aeb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 2

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aec;->tX()Lcom/kingroot/kinguser/aec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aec;->tW()V

    goto :goto_0

    .line 72
    :pswitch_1
    if-eqz p2, :cond_0

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/aec;->tX()Lcom/kingroot/kinguser/aec;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aec;->cI(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/aec;->tX()Lcom/kingroot/kinguser/aec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aec;->tZ()V

    goto :goto_0

    .line 80
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/aec;->tX()Lcom/kingroot/kinguser/aec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aec;->uc()V

    goto :goto_0

    .line 83
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/aec;->tX()Lcom/kingroot/kinguser/aec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aec;->ua()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method
