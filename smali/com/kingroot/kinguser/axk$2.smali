.class Lcom/kingroot/kinguser/axk$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axk;->Ui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axk;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/kingroot/kinguser/axk$2;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->te()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ais;->dB(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/axk$2;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;I)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axk$2;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;I)V

    goto :goto_0
.end method
