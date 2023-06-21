.class public Lcom/kingroot/kinguser/awq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ExtenalConchExecHelper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/awq;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/dk;)Lcom/kingroot/kinguser/w;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/awp;->Tq()Lcom/kingroot/kinguser/awp;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/kingroot/kinguser/awp;->a(Lcom/kingroot/kinguser/dk;)I

    move-result v9

    .line 26
    iget v5, p4, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v6, p4, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v7, 0x3

    move-wide v0, p0

    move-wide v2, p2

    move v8, v4

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    return-object v0
.end method
