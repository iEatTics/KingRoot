.class Lcom/kingroot/kinguser/bkw$1;
.super Lcom/kingroot/kinguser/bkw$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bkw;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzv:Lcom/kingroot/kinguser/bkw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bkw;Lcom/kingroot/kinguser/bkw;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/bkw$1;->bzv:Lcom/kingroot/kinguser/bkw;

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bkw$a;-><init>(Lcom/kingroot/kinguser/bkw;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkw$1;->aeS()Lcom/kingroot/kinguser/bkw;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bkw;->a(Landroid/os/Message;)V

    .line 53
    :cond_0
    return-void
.end method
