.class public Lcom/kingroot/kinguser/aml;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public azM:Ljava/lang/String;

.field public mColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/kingroot/kinguser/aml;->azM:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/kingroot/kinguser/aml;->mColor:I

    .line 25
    return-void
.end method
