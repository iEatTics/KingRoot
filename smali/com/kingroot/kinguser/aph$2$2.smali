.class Lcom/kingroot/kinguser/aph$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aph$2;->eE(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHM:Lcom/kingroot/kinguser/aph$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aph$2;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/aph$2$2;->aHM:Lcom/kingroot/kinguser/aph$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/aph$2$2;->aHM:Lcom/kingroot/kinguser/aph$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aph$2;->aHK:Lcom/kingroot/kinguser/api$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/api$a;->Ll()V

    .line 73
    return-void
.end method
