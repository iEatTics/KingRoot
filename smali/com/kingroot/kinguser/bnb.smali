.class public final Lcom/kingroot/kinguser/bnb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bCL:Ljava/lang/StringBuilder;

.field private bCM:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bnb;->bCM:I

    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/bnb;->bCL:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/kingroot/kinguser/bnb;->bCM:I

    .line 30
    return-void
.end method

.method private mt(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/kingroot/kinguser/bnb;->bCM:I

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/kingroot/kinguser/bnb;->bCL:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bnb;->bCL:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public final S(ILjava/lang/String;)Lcom/kingroot/kinguser/bnb;
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bnb;->mt(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bnb;->bCL:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    return-object p0
.end method

.method public final aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bnb;->mt(Ljava/lang/String;)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/bnb;->bCL:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bnb;->bCL:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
