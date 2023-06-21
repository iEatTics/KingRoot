.class Lcom/kingroot/kinguser/aut$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/bdg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSO:Lcom/kingroot/kinguser/aut;

.field final synthetic aSR:Lcom/kingroot/kinguser/bdg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bdg;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$2;->aSO:Lcom/kingroot/kinguser/aut;

    iput-object p2, p0, Lcom/kingroot/kinguser/aut$2;->aSR:Lcom/kingroot/kinguser/bdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$2;->aSO:Lcom/kingroot/kinguser/aut;

    iget-object v1, p0, Lcom/kingroot/kinguser/aut$2;->aSR:Lcom/kingroot/kinguser/bdg;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/bcy;)V

    .line 178
    return-void
.end method
