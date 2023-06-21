.class Lcom/kingroot/kinguser/ym$1;
.super Lcom/kingroot/kinguser/ym$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ym;->oK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vo:Lcom/kingroot/kinguser/ym;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ym;Lcom/kingroot/kinguser/ym;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/kingroot/kinguser/ym$1;->Vo:Lcom/kingroot/kinguser/ym;

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/ym$a;-><init>(Lcom/kingroot/kinguser/ym;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym$1;->oT()Lcom/kingroot/kinguser/ym;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->oQ()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 139
    :cond_0
    return-void
.end method
