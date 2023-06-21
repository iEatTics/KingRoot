.class Lcom/kingroot/kinguser/atj$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atj;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/atj$3;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcom/kingroot/kinguser/asx;->OK()Lcom/kingroot/kinguser/asx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj$3;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v1}, Lcom/kingroot/kinguser/atj;->c(Lcom/kingroot/kinguser/atj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asx;->iU(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/kingroot/kinguser/atj$3;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/atj;->a(Lcom/kingroot/kinguser/atj;Ljava/util/List;)V

    .line 240
    return-void
.end method
