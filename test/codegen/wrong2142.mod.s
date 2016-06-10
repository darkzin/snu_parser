##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 35 of <array 33 of <array 80 of <array 31 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 16 of <array 34 of <array 7 of <array 30 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 45 of <array 45 of <array 36 of <array 92 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 74 of <array 23 of <array 49 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $100, %eax              #   0:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v4 <- t6
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 64 of <array 35 of <array 33 of <array 80 of <array 31 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 74 of <array 23 of <array 49 of <array 8 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 45 of <array 45 of <array 36 of <array 92 of <array 10 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 6 of <array 16 of <array 34 of <array 7 of <array 30 of <bool>>>>>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 47 of <array 99 of <array 39 of <array 7 of <char>>>>>>> %ebp+8 ]
    #   -733286456(%ebp)  733286424  [ $v1       <array 64 of <array 35 of <array 33 of <array 80 of <array 31 of <int>>>>>> %ebp-733286456 ]
    #   -733971920(%ebp)  685464  [ $v2       <array 6 of <array 16 of <array 34 of <array 7 of <array 30 of <bool>>>>>> %ebp-733971920 ]
    #   -1002243944(%ebp)  268272024  [ $v3       <array 45 of <array 45 of <array 36 of <array 92 of <array 10 of <int>>>>>> %ebp-1002243944 ]
    #   -1008248624(%ebp)  6004680  [ $v4       <array 9 of <array 74 of <array 23 of <array 49 of <array 8 of <bool>>>>>> %ebp-1008248624 ]
    #   -1008248628(%ebp)   4  [ $v5       <int> %ebp-1008248628 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1008248616, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $252062154, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-733286456(%ebp)     # local array 'v1': 5 dimensions
    movl    $64,-733286452(%ebp)    #   dimension 1: 64 elements
    movl    $35,-733286448(%ebp)    #   dimension 2: 35 elements
    movl    $33,-733286444(%ebp)    #   dimension 3: 33 elements
    movl    $80,-733286440(%ebp)    #   dimension 4: 80 elements
    movl    $31,-733286436(%ebp)    #   dimension 5: 31 elements
    movl    $5,-733971920(%ebp)     # local array 'v2': 5 dimensions
    movl    $6,-733971916(%ebp)     #   dimension 1: 6 elements
    movl    $16,-733971912(%ebp)    #   dimension 2: 16 elements
    movl    $34,-733971908(%ebp)    #   dimension 3: 34 elements
    movl    $7,-733971904(%ebp)     #   dimension 4: 7 elements
    movl    $30,-733971900(%ebp)    #   dimension 5: 30 elements
    movl    $5,-1002243944(%ebp)    # local array 'v3': 5 dimensions
    movl    $45,-1002243940(%ebp)   #   dimension 1: 45 elements
    movl    $45,-1002243936(%ebp)   #   dimension 2: 45 elements
    movl    $36,-1002243932(%ebp)   #   dimension 3: 36 elements
    movl    $92,-1002243928(%ebp)   #   dimension 4: 92 elements
    movl    $10,-1002243924(%ebp)   #   dimension 5: 10 elements
    movl    $5,-1008248624(%ebp)    # local array 'v4': 5 dimensions
    movl    $9,-1008248620(%ebp)    #   dimension 1: 9 elements
    movl    $74,-1008248616(%ebp)   #   dimension 2: 74 elements
    movl    $23,-1008248612(%ebp)   #   dimension 3: 23 elements
    movl    $49,-1008248608(%ebp)   #   dimension 4: 49 elements
    movl    $8,-1008248604(%ebp)    #   dimension 5: 8 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
    leal    -1008248624(%ebp), %eax #   2:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  3 <- t7
    pushl   %eax                   
    leal    -1002243944(%ebp), %eax #   4:     &()    t8 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  2 <- t8
    pushl   %eax                   
    leal    -733971920(%ebp), %eax  #   6:     &()    t9 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  1 <- t9
    pushl   %eax                   
    leal    -733286456(%ebp), %eax  #   8:     &()    t10 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  10:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movl    $13418, %eax            #  11:     assign v5 <- 13418
    movl    %eax, -1008248628(%ebp)
    jmp     l_f1_2                  #  12:     goto   2
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $1008248616, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 84 of <array 86 of <array 20 of <array 100 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -26(%ebp)   1  [ $v2       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v2 <- t6
    movb    %al, -26(%ebp)         
l_f2_9_while_cond:
    movl    $14439, %eax            #  12:     add    t7 <- 14439, 17471
    movl    $17471, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t8 <- t7, 7355
    movl    $7355, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     if     t8 < 52768 goto 12
    movl    $52768, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12                
    jmp     l_f2_13                 #  15:     goto   13
l_f2_12:
    movl    $1, %eax                #  17:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_14                 #  18:     goto   14
l_f2_13:
    movl    $0, %eax                #  20:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f2_14:
    movzbl  -25(%ebp), %eax         #  22:     return t9
    jmp     l_f2_exit              
    jmp     l_f2_9_while_cond       #  23:     goto   9_while_cond
    movl    $97, %eax               #  24:     assign v1 <- 97
    movb    %al, 12(%ebp)          

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 84 of <array 86 of <array 20 of <array 100 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 84 of <array 86 of <array 20 of <array 100 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_4                #   3:     goto   4
l_test_4:
    call    ReadInt                 #   5:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_10_if_false      #   6:     goto   10_if_false
    jmp     l_test_8                #   7:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
l_test_1:
    call    dummyProcedure          #  12:     call   dummyProcedure
    movl    $98, %eax               #  13:     param  1 <- 98
    pushl   %eax                   
    leal    v0, %eax                #  14:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  16:     call   t2 <- f2
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #  17:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_test_15_while_cond:
    jmp     l_test_16_while_body    #  19:     goto   16_while_body
    jmp     l_test_14               #  20:     goto   14
l_test_16_while_body:
    movl    $98, %eax               #  22:     param  1 <- 98
    pushl   %eax                   
    leal    v0, %eax                #  23:     &()    t4 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  25:     call   t5 <- f2
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    jmp     l_test_15_while_cond    #  26:     goto   15_while_cond
l_test_14:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <array 5 of <array 84 of <array 86 of <array 20 of <array 100 of <char>>>>>>
    .long    5
    .long    5
    .long   84
    .long   86
    .long   20
    .long  100
    .skip 72240000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
