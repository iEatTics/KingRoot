.class public Lcom/kingroot/kinguser/bnt$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bnt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic bEY:Lcom/kingroot/kinguser/bnt;

.field public bEZ:I

.field public bFa:Lcom/kingroot/kinguser/bwd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bnt;ILcom/kingroot/kinguser/bwd;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/kingroot/kinguser/bnt$a;->bEY:Lcom/kingroot/kinguser/bnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p2, p0, Lcom/kingroot/kinguser/bnt$a;->bEZ:I

    .line 282
    iput-object p3, p0, Lcom/kingroot/kinguser/bnt$a;->bFa:Lcom/kingroot/kinguser/bwd;

    .line 283
    return-void
.end method
