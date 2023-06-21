.class Lcom/kingroot/kinguser/cfg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfg;->a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;

.field final synthetic cbn:J

.field final synthetic cbo:I

.field final synthetic cbp:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfg;JII)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$4;->cbm:Lcom/kingroot/kinguser/cfg;

    iput-wide p2, p0, Lcom/kingroot/kinguser/cfg$4;->cbn:J

    iput p4, p0, Lcom/kingroot/kinguser/cfg$4;->cbo:I

    iput p5, p0, Lcom/kingroot/kinguser/cfg$4;->cbp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$4;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfg;->e(Lcom/kingroot/kinguser/cfg;)Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/cfg$4;->cbn:J

    iget v1, p0, Lcom/kingroot/kinguser/cfg$4;->cbo:I

    iget v4, p0, Lcom/kingroot/kinguser/cfg$4;->cbp:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/kingroot/kinguser/ceu;->b(JII)V

    .line 155
    return-void
.end method
