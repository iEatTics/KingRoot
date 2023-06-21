.class public Lcom/kingcore/uilib/TypeWriterTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private Dx:J

.field private Dy:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dx:J

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/kingcore/uilib/TypeWriterTextView$1;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/TypeWriterTextView$1;-><init>(Lcom/kingcore/uilib/TypeWriterTextView;)V

    iput-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dy:Ljava/lang/Runnable;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dx:J

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/kingcore/uilib/TypeWriterTextView$1;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/TypeWriterTextView$1;-><init>(Lcom/kingcore/uilib/TypeWriterTextView;)V

    iput-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dy:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/TypeWriterTextView;)I
    .locals 2

    .prologue
    .line 13
    iget v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mIndex:I

    return v0
.end method

.method static synthetic b(Lcom/kingcore/uilib/TypeWriterTextView;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lcom/kingcore/uilib/TypeWriterTextView;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mIndex:I

    return v0
.end method

.method static synthetic d(Lcom/kingcore/uilib/TypeWriterTextView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dy:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/kingcore/uilib/TypeWriterTextView;)J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dx:J

    return-wide v0
.end method

.method static synthetic f(Lcom/kingcore/uilib/TypeWriterTextView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mText:Ljava/lang/CharSequence;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mIndex:I

    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TypeWriterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dy:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dx:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method public setCharacterDelay(J)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/kingcore/uilib/TypeWriterTextView;->Dx:J

    .line 50
    return-void
.end method
