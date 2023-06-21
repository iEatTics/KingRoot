.class Lcom/kingroot/kinguser/jh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private sV:Ljava/lang/String;

.field private sW:I

.field private sX:Ljava/lang/String;

.field private sY:Ljava/lang/String;

.field private sZ:Ljava/lang/String;

.field private ta:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method R(I)Lcom/kingroot/kinguser/jh$a;
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/kingroot/kinguser/jh$a;->sW:I

    .line 59
    return-object p0
.end method

.method aH(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kingroot/kinguser/jh$a;->mPackageName:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method aI(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/jh$a;->sV:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method aJ(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/jh$a;->sX:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method aK(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/jh$a;->sY:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method aL(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingroot/kinguser/jh$a;->sZ:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method aM(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/jh$a;->ta:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x2b

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const/4 v0, 0x0

    .line 92
    iget-object v3, p0, Lcom/kingroot/kinguser/jh$a;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 95
    const/16 v0, 0x70

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/jh$a;->sV:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 100
    if-eqz v0, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :goto_0
    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    iget-object v3, p0, Lcom/kingroot/kinguser/jh$a;->sV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    iget v3, p0, Lcom/kingroot/kinguser/jh$a;->sW:I

    if-lez v3, :cond_2

    .line 108
    if-eqz v0, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :goto_1
    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    iget v3, p0, Lcom/kingroot/kinguser/jh$a;->sW:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/kingroot/kinguser/jh$a;->sX:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 116
    if-eqz v0, :cond_a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :goto_2
    const/16 v1, 0x64

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/kingroot/kinguser/jh$a;->sX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/jh$a;->sY:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 124
    if-eqz v0, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_4
    const/16 v0, 0x65

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->sY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const/16 v0, 0x63

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->sZ:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 136
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    const/16 v0, 0x6d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->sZ:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->ta:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    const/16 v0, 0x61

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/jh$a;->ta:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    move v0, v1

    .line 101
    goto :goto_0

    :cond_9
    move v0, v1

    .line 109
    goto :goto_1

    :cond_a
    move v0, v1

    .line 117
    goto :goto_2
.end method
