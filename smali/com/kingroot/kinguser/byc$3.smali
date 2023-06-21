.class Lcom/kingroot/kinguser/byc$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/byc;->a(Landroid/content/Context;JJILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTI:Lcom/kingroot/kinguser/byc;

.field final synthetic bTJ:Ljava/util/List;

.field final synthetic bTK:J

.field final synthetic bTL:J

.field final synthetic bTM:I

.field final synthetic yu:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/byc;Ljava/util/List;Landroid/content/Context;JJI)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kingroot/kinguser/byc$3;->bTI:Lcom/kingroot/kinguser/byc;

    iput-object p2, p0, Lcom/kingroot/kinguser/byc$3;->bTJ:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/byc$3;->yu:Landroid/content/Context;

    iput-wide p4, p0, Lcom/kingroot/kinguser/byc$3;->bTK:J

    iput-wide p6, p0, Lcom/kingroot/kinguser/byc$3;->bTL:J

    iput p8, p0, Lcom/kingroot/kinguser/byc$3;->bTM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/byc$3;->bTI:Lcom/kingroot/kinguser/byc;

    iget-object v1, p0, Lcom/kingroot/kinguser/byc$3;->bTJ:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/byc;->a(Lcom/kingroot/kinguser/byc;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/byc$3;->bTI:Lcom/kingroot/kinguser/byc;

    iget-object v1, p0, Lcom/kingroot/kinguser/byc$3;->yu:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingroot/kinguser/byc$3;->bTK:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/byc$3;->bTL:J

    iget v6, p0, Lcom/kingroot/kinguser/byc$3;->bTM:I

    invoke-static/range {v0 .. v7}, Lcom/kingroot/kinguser/byc;->b(Lcom/kingroot/kinguser/byc;Landroid/content/Context;JJILjava/util/List;)V

    .line 147
    return-void
.end method
