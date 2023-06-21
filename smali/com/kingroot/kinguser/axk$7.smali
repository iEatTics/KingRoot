.class Lcom/kingroot/kinguser/axk$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axk;
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
    .line 431
    iput-object p1, p0, Lcom/kingroot/kinguser/axk$7;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/axk$7;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-static {v0}, Lcom/kingroot/kinguser/axk;->d(Lcom/kingroot/kinguser/axk;)V

    .line 436
    return-void
.end method
