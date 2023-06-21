.class public Lcom/kingroot/kinguser/bqm$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lcom/kingroot/kinguser/bqm$e;->a:Ljava/lang/String;

    .line 805
    iput p2, p0, Lcom/kingroot/kinguser/bqm$e;->b:I

    .line 806
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kingroot/kinguser/bqm$1;)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bqm$e;-><init>(Ljava/lang/String;I)V

    return-void
.end method
