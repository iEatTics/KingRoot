.class Lcom/kingroot/kinguser/aut$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aST:Lcom/kingroot/kinguser/aut$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aut$3;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$3$1;->aST:Lcom/kingroot/kinguser/aut$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$3$1;->aST:Lcom/kingroot/kinguser/aut$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/aut$3;->aSO:Lcom/kingroot/kinguser/aut;

    iget-object v1, p0, Lcom/kingroot/kinguser/aut$3$1;->aST:Lcom/kingroot/kinguser/aut$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/aut$3;->aSS:Lcom/kingroot/kinguser/bcy;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/bcy;)V

    .line 228
    return-void
.end method
