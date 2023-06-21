.class Lcom/kingroot/kinguser/tx$1;
.super Lcom/kingroot/kinguser/tx$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tx$b",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic HT:Lcom/kingroot/kinguser/tx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tx;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/tx$1;->HT:Lcom/kingroot/kinguser/tx;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/tx$b;-><init>(Lcom/kingroot/kinguser/tx$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/tx$1;->HT:Lcom/kingroot/kinguser/tx;

    iget-object v1, p0, Lcom/kingroot/kinguser/tx$1;->HZ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/tx;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
