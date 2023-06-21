.class Lcom/kingroot/kinguser/asl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asl;->D(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMW:Ljava/lang/String;

.field final synthetic aMX:I

.field final synthetic aMY:Lcom/kingroot/kinguser/asl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kingroot/kinguser/asl$2;->aMY:Lcom/kingroot/kinguser/asl;

    iput-object p2, p0, Lcom/kingroot/kinguser/asl$2;->aMW:Ljava/lang/String;

    iput p3, p0, Lcom/kingroot/kinguser/asl$2;->aMX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 96
    iget-object v1, p0, Lcom/kingroot/kinguser/asl$2;->aMY:Lcom/kingroot/kinguser/asl;

    invoke-static {v1}, Lcom/kingroot/kinguser/asl;->a(Lcom/kingroot/kinguser/asl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    iget-object v1, p0, Lcom/kingroot/kinguser/asl$2;->aMY:Lcom/kingroot/kinguser/asl;

    iget-object v2, p0, Lcom/kingroot/kinguser/asl$2;->aMW:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/asl;->a(Lcom/kingroot/kinguser/asl;Ljava/lang/String;)Z

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/kingroot/kinguser/asl$2;->aMY:Lcom/kingroot/kinguser/asl;

    iget-object v3, p0, Lcom/kingroot/kinguser/asl$2;->aMW:Ljava/lang/String;

    iget v4, p0, Lcom/kingroot/kinguser/asl$2;->aMX:I

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/asl;->a(Lcom/kingroot/kinguser/asl;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/asl;->Oa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/asl;->au(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 112
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 117
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/asl;->Oa()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 127
    :cond_2
    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {}, Lcom/kingroot/kinguser/asl;->Ob()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/kingroot/kinguser/asl;->e(IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/asl;->Oa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_0
    int-to-long v2, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/kingroot/kinguser/asl$2;->aMY:Lcom/kingroot/kinguser/asl;

    iget v6, p0, Lcom/kingroot/kinguser/asl$2;->aMX:I

    invoke-static {v3, v2, v6}, Lcom/kingroot/kinguser/asl;->b(Lcom/kingroot/kinguser/asl;Ljava/lang/String;I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
