.class public Lcom/kingroot/kinguser/ade$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final acg:I

.field final ach:I

.field final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/ade$a;->content:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/kingroot/kinguser/ade$a;->acg:I

    .line 48
    iput p3, p0, Lcom/kingroot/kinguser/ade$a;->ach:I

    .line 49
    return-void
.end method


# virtual methods
.method public si()Landroid/text/SpannableString;
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 52
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/kingroot/kinguser/ade$a;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/kingroot/kinguser/ade$a;->ach:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 55
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget v2, p0, Lcom/kingroot/kinguser/ade$a;->acg:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 58
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    return-object v0
.end method
