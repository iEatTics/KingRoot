.class public Lcom/kingroot/kinguser/bdg;
.super Lcom/kingroot/kinguser/bcz;
.source "SourceFile"


# instance fields
.field private aUI:I

.field private akJ:I

.field private biR:Ljava/lang/String;

.field private biS:Ljava/lang/String;

.field private biT:Ljava/lang/String;

.field private biU:Ljava/lang/String;

.field private biV:Ljava/lang/String;

.field private biW:Z

.field private biX:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcz;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bdg;->biX:I

    .line 32
    iput p1, p0, Lcom/kingroot/kinguser/bdg;->akJ:I

    .line 33
    iput-object p2, p0, Lcom/kingroot/kinguser/bdg;->title:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/kingroot/kinguser/bdg;->aUI:I

    .line 35
    iput-object p4, p0, Lcom/kingroot/kinguser/bdg;->biR:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/kingroot/kinguser/bdg;->biS:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/kingroot/kinguser/bdg;->biT:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/kingroot/kinguser/bdg;->biU:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/kingroot/kinguser/bdg;->biV:Ljava/lang/String;

    .line 40
    iput-boolean p9, p0, Lcom/kingroot/kinguser/bdg;->biW:Z

    .line 41
    return-void
.end method


# virtual methods
.method public YA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bdg;->biV:Ljava/lang/String;

    return-object v0
.end method

.method public YB()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bdg;->biW:Z

    return v0
.end method

.method public Yo()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/kingroot/kinguser/bdg;->aUI:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public Yp()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x3

    return v0
.end method

.method public Yv()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/kingroot/kinguser/bdg;->biX:I

    return v0
.end method

.method public Yw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/bdg;->biR:Ljava/lang/String;

    return-object v0
.end method

.method public Yx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bdg;->biS:Ljava/lang/String;

    return-object v0
.end method

.method public Yy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/bdg;->biT:Ljava/lang/String;

    return-object v0
.end method

.method public Yz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/bdg;->biU:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/kingroot/kinguser/bdg;->akJ:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bdg;->title:Ljava/lang/String;

    return-object v0
.end method

.method public ik(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/kingroot/kinguser/bdg;->biX:I

    .line 49
    return-void
.end method
