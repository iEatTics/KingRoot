.class Lcom/kingroot/kinguser/bci$8;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$8;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$8;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->j(Lcom/kingroot/kinguser/bci;)V

    .line 432
    return-void
.end method
