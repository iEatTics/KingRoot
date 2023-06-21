.class public Lcom/kingroot/kinguser/cbd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mId:I

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/cbd;->mId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/cbd;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/cbd;->mId:I

    .line 23
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/kingroot/kinguser/cbd;->mIntent:Landroid/content/Intent;

    .line 19
    return-void
.end method
