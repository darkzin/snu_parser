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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 9 of <array 9 of <array 1 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $69639, %eax            #   4:     mul    t3 <- 69639, 80400
    movl    $80400, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     mul    t4 <- t3, 2433
    movl    $2433, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     div    t5 <- t4, 19552
    movl    $19552, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     if     t5 < 65197 goto 6_while_body
    movl    $65197, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  15:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  16:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 4 of <array 4 of <array 5 of <int>>>>>>> %ebp+12 ]
    #    -17(%ebp)   1  [ $v2       <bool> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_5                  #   0:     goto   5
    jmp     l_f1_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $0, %eax                #   5:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   7:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   8:     goto   0
l_f1_0:
    movl    $93821, %eax            #  10:     if     93821 > 36174 goto 11
    movl    $36174, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_11                
    jmp     l_f1_12                 #  11:     goto   12
l_f1_11:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_13                 #  14:     goto   13
l_f1_12:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_13:
    movzbl  -14(%ebp), %eax         #  18:     assign v2 <- t4
    movb    %al, -17(%ebp)         
    jmp     l_f1_20                 #  19:     goto   20
    jmp     l_f1_20                 #  20:     goto   20
    jmp     l_f1_21                 #  21:     goto   21
l_f1_20:
    movl    $1, %eax                #  23:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_22                 #  24:     goto   22
l_f1_21:
    movl    $0, %eax                #  26:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f1_22:
    movl    $1, %eax                #  28:     if     1 # t5 goto 16
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_16                
    jmp     l_f1_17                 #  29:     goto   17
l_f1_16:
    movl    $1, %eax                #  31:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_18                 #  32:     goto   18
l_f1_17:
    movl    $0, %eax                #  34:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f1_18:
    movzbl  -16(%ebp), %eax         #  36:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 1 of <array 4 of <array 4 of <array 5 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 9 of <array 9 of <array 1 of <array 2 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #   -5900(%ebp)  5856  [ $v0       <array 9 of <array 9 of <array 9 of <array 1 of <array 2 of <int>>>>>> %ebp-5900 ]
    #   -9124(%ebp)  3224  [ $v1       <array 10 of <array 1 of <array 4 of <array 4 of <array 5 of <int>>>>>> %ebp-9124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9112, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2278, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5900(%ebp)          # local array 'v0': 5 dimensions
    movl    $9,-5896(%ebp)          #   dimension 1: 9 elements
    movl    $9,-5892(%ebp)          #   dimension 2: 9 elements
    movl    $9,-5888(%ebp)          #   dimension 3: 9 elements
    movl    $1,-5884(%ebp)          #   dimension 4: 1 elements
    movl    $2,-5880(%ebp)          #   dimension 5: 2 elements
    movl    $5,-9124(%ebp)          # local array 'v1': 5 dimensions
    movl    $10,-9120(%ebp)         #   dimension 1: 10 elements
    movl    $1,-9116(%ebp)          #   dimension 2: 1 elements
    movl    $4,-9112(%ebp)          #   dimension 3: 4 elements
    movl    $4,-9108(%ebp)          #   dimension 4: 4 elements
    movl    $5,-9104(%ebp)          #   dimension 5: 5 elements

    # function body
    leal    -9124(%ebp), %eax       #   0:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  1 <- t3
    pushl   %eax                   
    movl    $16241, %eax            #   2:     param  0 <- 16241
    pushl   %eax                   
    call    f1                      #   3:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   4:     if     t4 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_2                  #   5:     goto   2
l_f2_5:
    jmp     l_f2_2                  #   7:     goto   2
    jmp     l_f2_2                  #   8:     goto   2
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_f2_3:
    movzbl  -26(%ebp), %eax         #  14:     param  1 <- t5
    pushl   %eax                   
    leal    -5900(%ebp), %eax       #  15:     &()    t6 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  17:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_8_while_body       #  19:     goto   8_while_body
    jmp     l_f2_8_while_body       #  20:     goto   8_while_body
    jmp     l_f2_6                  #  21:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  23:     goto   7_while_cond
l_f2_6:
    movl    $23861, %eax            #  25:     sub    t8 <- 23861, 30539
    movl    $30539, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t9 <- t8, 33014
    movl    $33014, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    call    ReadInt                 #  27:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -44(%ebp), %eax         #  28:     sub    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     if     t11 < 80624 goto 15_if_true
    movl    $80624, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  30:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  32:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $9112, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 9 of <array 9 of <array 1 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
    jmp     l_test_3                #   2:     goto   3
l_test_5_if_false:
l_test_3:
    call    dummyProcedure          #   5:     call   dummyProcedure
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
    call    ReadInt                 #   7:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_9_while_cond:
    movl    $0, %eax                #   9:     if     0 = 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    movl    $1, %eax                #  12:     param  1 <- 1
    pushl   %eax                   
    leal    v0, %eax                #  13:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  15:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_13               #  16:     goto   13
l_test_13:
l_test_17_while_cond:
    movl    $99, %eax               #  19:     if     99 # 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  20:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  22:     goto   17_while_cond
l_test_16:
    jmp     l_test_9_while_cond     #  24:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <array 9 of <array 9 of <array 9 of <array 1 of <array 2 of <int>>>>>>
    .long    5
    .long    9
    .long    9
    .long    9
    .long    1
    .long    2
    .skip 5832








    # end of global data section
    #-----------------------------------------

    .end
##################################################
