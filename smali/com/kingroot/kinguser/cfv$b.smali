.class public Lcom/kingroot/kinguser/cfv$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private cdH:I

.field private cdI:I

.field private cdJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p3, p0, Lcom/kingroot/kinguser/cfv$b;->cdH:I

    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    .line 57
    return-void
.end method


# virtual methods
.method public amE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/kingroot/kinguser/cfv$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    iget v3, p0, Lcom/kingroot/kinguser/cfv$b;->cdH:I

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cfv$b;-><init>(Ljava/lang/String;II)V

    .line 42
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/cfv$b;

    .line 112
    iget-object v1, p1, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    iget v2, p0, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    if-ne v1, v2, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    if-ltz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/cfv$b;->cdI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfv$b;->cdJ:Ljava/lang/String;

    goto :goto_0
.end method
