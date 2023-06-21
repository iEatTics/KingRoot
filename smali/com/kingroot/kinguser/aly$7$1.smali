.class Lcom/kingroot/kinguser/aly$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aly$7;->a(Lcom/kingroot/kinguser/bed$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azo:I

.field final synthetic azp:Lcom/kingroot/kinguser/aly$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly$7;I)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$7$1;->azp:Lcom/kingroot/kinguser/aly$7;

    iput p2, p0, Lcom/kingroot/kinguser/aly$7$1;->azo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$7$1;->azp:Lcom/kingroot/kinguser/aly$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/aly$7;->this$0:Lcom/kingroot/kinguser/aly;

    iget v1, p0, Lcom/kingroot/kinguser/aly$7$1;->azo:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aly;->a(Lcom/kingroot/kinguser/aly;IZ)V

    .line 371
    return-void
.end method
