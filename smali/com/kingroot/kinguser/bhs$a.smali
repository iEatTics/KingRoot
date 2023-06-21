.class public Lcom/kingroot/kinguser/bhs$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private abs:Z

.field protected mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bhs$a;->abs:Z

    .line 123
    iput p1, p0, Lcom/kingroot/kinguser/bhs$a;->mId:I

    .line 124
    return-void
.end method


# virtual methods
.method public acK()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bhs$a;->abs:Z

    return v0
.end method

.method public ed(Z)Lcom/kingroot/kinguser/bhs$a;
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bhs$a;->abs:Z

    .line 132
    return-object p0
.end method
