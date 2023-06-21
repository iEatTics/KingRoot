.class Lcom/kingroot/kinguser/cfg$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfg;->aA(II)Lcom/kingroot/kinguser/cck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;

.field final synthetic cbo:I

.field final synthetic cbp:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfg;II)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$5;->cbm:Lcom/kingroot/kinguser/cfg;

    iput p2, p0, Lcom/kingroot/kinguser/cfg$5;->cbo:I

    iput p3, p0, Lcom/kingroot/kinguser/cfg$5;->cbp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$5;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->e(Lcom/kingroot/kinguser/cfg;)Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/cfg$5;->cbo:I

    iget v2, p0, Lcom/kingroot/kinguser/cfg$5;->cbp:I

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ceu;->az(II)V

    .line 181
    return-void
.end method
