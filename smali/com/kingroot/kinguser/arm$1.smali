.class Lcom/kingroot/kinguser/arm$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/arm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aLU:Lcom/kingroot/kinguser/arm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/arm;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kingroot/kinguser/arm$1;->aLU:Lcom/kingroot/kinguser/arm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/asg;->NO()Lcom/kingroot/kinguser/asg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/arm$1;->aLU:Lcom/kingroot/kinguser/arm;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asg;->a(Lcom/kingroot/kinguser/asg$b;)V

    .line 24
    return-void
.end method
