.class Lcom/kingroot/kinguser/ape;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aHe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private aHf:I

.field private aHg:I

.field private aHh:I

.field private aHi:I

.field private aHj:Lcom/kingroot/kinguser/apl;

.field private aHk:Lcom/kingroot/kinguser/apk;

.field private aHl:Lcom/kingroot/kinguser/apj;

.field private aHm:Lcom/kingroot/kinguser/api;

.field private aHn:Landroid/widget/ImageView;

.field private aHo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundColor:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method KU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/ape;->aHo:Ljava/util/List;

    return-object v0
.end method

.method KV()Lcom/kingroot/kinguser/apl;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/ape;->aHj:Lcom/kingroot/kinguser/apl;

    return-object v0
.end method

.method KW()Lcom/kingroot/kinguser/apk;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/ape;->aHk:Lcom/kingroot/kinguser/apk;

    return-object v0
.end method

.method KX()Lcom/kingroot/kinguser/apj;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ape;->aHl:Lcom/kingroot/kinguser/apj;

    return-object v0
.end method

.method KY()Lcom/kingroot/kinguser/api;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/ape;->aHm:Lcom/kingroot/kinguser/api;

    return-object v0
.end method

.method KZ()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/ape;->aHf:I

    return v0
.end method

.method La()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/kingroot/kinguser/ape;->aHg:I

    return v0
.end method

.method Lb()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/ape;->aHn:Landroid/widget/ImageView;

    return-object v0
.end method

.method a(Lcom/kingroot/kinguser/api;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingroot/kinguser/ape;->aHm:Lcom/kingroot/kinguser/api;

    .line 92
    return-void
.end method

.method a(Lcom/kingroot/kinguser/apj;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/ape;->aHl:Lcom/kingroot/kinguser/apj;

    .line 84
    return-void
.end method

.method a(Lcom/kingroot/kinguser/apk;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kingroot/kinguser/ape;->aHk:Lcom/kingroot/kinguser/apk;

    .line 76
    return-void
.end method

.method a(Lcom/kingroot/kinguser/apl;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/ape;->aHj:Lcom/kingroot/kinguser/apl;

    .line 68
    return-void
.end method

.method aU(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/ape;->aHe:Ljava/util/List;

    .line 40
    return-void
.end method

.method aV(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/ape;->aHo:Ljava/util/List;

    .line 60
    return-void
.end method

.method b(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kingroot/kinguser/ape;->aHn:Landroid/widget/ImageView;

    .line 116
    return-void
.end method

.method fU(I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/ape;->aHo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/ape;->aHf:I

    goto :goto_0
.end method

.method fV(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/kingroot/kinguser/ape;->aHg:I

    .line 109
    return-void
.end method

.method fW(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/kingroot/kinguser/ape;->aHi:I

    .line 131
    return-void
.end method

.method getBackgroundColor()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/ape;->backgroundColor:I

    return v0
.end method

.method getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/kingroot/kinguser/ape;->aHh:I

    return v0
.end method

.method setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/kingroot/kinguser/ape;->backgroundColor:I

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/ape;->backgroundColor:I

    goto :goto_0
.end method

.method setOffscreenPageLimit(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/kingroot/kinguser/ape;->aHh:I

    .line 127
    return-void
.end method
