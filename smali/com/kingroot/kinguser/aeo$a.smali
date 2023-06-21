.class public Lcom/kingroot/kinguser/aeo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field Ku:Ljava/lang/String;

.field afp:[I

.field id:I

.field key:Ljava/lang/String;

.field localName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/kingroot/kinguser/aeo$a;->id:I

    .line 86
    iput-object p2, p0, Lcom/kingroot/kinguser/aeo$a;->localName:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/kingroot/kinguser/aeo$a;->Ku:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/kingroot/kinguser/aeo$a;->key:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/kingroot/kinguser/aeo$a;->afp:[I

    .line 90
    return-void
.end method
