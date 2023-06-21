.class Lcom/kingroot/kinguser/brt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brt;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKZ:Lcom/kingroot/kinguser/brt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brt$2;->bKZ:Lcom/kingroot/kinguser/brt;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$2;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->h(Lcom/kingroot/kinguser/brt;)V

    .line 358
    return-void
.end method
