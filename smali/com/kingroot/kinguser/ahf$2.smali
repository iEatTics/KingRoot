.class Lcom/kingroot/kinguser/ahf$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahf;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/ahf$2;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$2;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->a(Lcom/kingroot/kinguser/ahf;)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$2;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->b(Lcom/kingroot/kinguser/ahf;)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$2;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->c(Lcom/kingroot/kinguser/ahf;)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$2;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->d(Lcom/kingroot/kinguser/ahf;)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$2;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->e(Lcom/kingroot/kinguser/ahf;)V

    .line 75
    return-void
.end method
