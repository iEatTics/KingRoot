.class Lcom/kingroot/kinguser/bfd$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmm:Lcom/kingroot/kinguser/bfd$18;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfd$18;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$18$1;->bmm:Lcom/kingroot/kinguser/bfd$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18$1;->bmm:Lcom/kingroot/kinguser/bfd$18;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->l(Lcom/kingroot/kinguser/bfd;)V

    .line 340
    return-void
.end method
