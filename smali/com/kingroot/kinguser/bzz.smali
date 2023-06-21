.class public Lcom/kingroot/kinguser/bzz;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private JH:Ljava/lang/String;

.field private errCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    iput p1, p0, Lcom/kingroot/kinguser/bzz;->errCode:I

    .line 27
    iput-object p2, p0, Lcom/kingroot/kinguser/bzz;->JH:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/kingroot/kinguser/bzz;->errCode:I

    return v0
.end method
