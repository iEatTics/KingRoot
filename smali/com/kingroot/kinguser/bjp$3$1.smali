.class Lcom/kingroot/kinguser/bjp$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjp$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxK:Ljava/lang/String;

.field final synthetic bxL:J

.field final synthetic bxM:Lcom/kingroot/kinguser/bjp$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjp$3;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 270
    iput-object p1, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxM:Lcom/kingroot/kinguser/bjp$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxK:Ljava/lang/String;

    iput-wide p3, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxL:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07036a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0014

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxM:Lcom/kingroot/kinguser/bjp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjp;->bxD:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxM:Lcom/kingroot/kinguser/bjp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjp;->bxD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07036c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxM:Lcom/kingroot/kinguser/bjp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjp;->e(Lcom/kingroot/kinguser/bjp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxM:Lcom/kingroot/kinguser/bjp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjp;->e(Lcom/kingroot/kinguser/bjp;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxM:Lcom/kingroot/kinguser/bjp$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/bjp$3$1;->bxL:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method
