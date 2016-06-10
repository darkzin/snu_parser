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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 2 of <array 9 of <array 1 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 10 of <array 9 of <array 8 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 1 of <array 3 of <array 5 of <array 4 of <char>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     return t8
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_f0_3_while_cond:
    movl    $18891, %eax            #   4:     sub    t10 <- 18891, 62875
    movl    $62875, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $17953, %eax            #   5:     if     17953 >= t10 goto 4_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    movl    $86990, %eax            #   8:     return 86990
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #   9:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t9       <char> %ebp-27 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $15785, %eax            #   1:     if     15785 > 38620 goto 4_if_true
    movl    $38620, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_if_false:
l_f1_3:
    call    dummyCHARfunc           #   7:     call   t8 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $24912, %eax            #   8:     if     24912 > 69187 goto 9_if_true
    movl    $69187, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_13_while_cond:
    movl    $31617, %eax            #  15:     if     31617 < 56272 goto 14_while_body
    movl    $56272, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  18:     goto   13_while_cond
l_f1_12:
    call    dummyCHARfunc           #  20:     call   t9 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
l_f1_18_while_cond:
    movl    $98, %eax               #  22:     if     98 # 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_19_while_body     
    jmp     l_f1_17                 #  23:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  25:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_0                  #  27:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $35337, %eax            #  30:     mul    t10 <- 35337, 61589
    movl    $61589, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     mul    t11 <- t10, 44182
    movl    $44182, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $72203, %eax            #  32:     add    t12 <- 72203, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     param  0 <- t12
    pushl   %eax                   
    call    WriteInt                #  34:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  35:     call   t13 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 8 of <array 2 of <array 9 of <array 1 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <array 1 of <array 3 of <array 5 of <array 4 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 3 of <array 10 of <array 9 of <array 8 of <array 5 of <int>>>>>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]
    #   -920(%ebp)  888  [ $v2       <array 8 of <array 2 of <array 9 of <array 1 of <array 6 of <bool>>>>>> %ebp-920 ]
    #   -44144(%ebp)  43224  [ $v3       <array 3 of <array 10 of <array 9 of <array 8 of <array 5 of <int>>>>>> %ebp-44144 ]
    #   -44468(%ebp)  324  [ $v4       <array 5 of <array 1 of <array 3 of <array 5 of <array 4 of <char>>>>>> %ebp-44468 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44456, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11114, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-920(%ebp)           # local array 'v2': 5 dimensions
    movl    $8,-916(%ebp)           #   dimension 1: 8 elements
    movl    $2,-912(%ebp)           #   dimension 2: 2 elements
    movl    $9,-908(%ebp)           #   dimension 3: 9 elements
    movl    $1,-904(%ebp)           #   dimension 4: 1 elements
    movl    $6,-900(%ebp)           #   dimension 5: 6 elements
    movl    $5,-44144(%ebp)         # local array 'v3': 5 dimensions
    movl    $3,-44140(%ebp)         #   dimension 1: 3 elements
    movl    $10,-44136(%ebp)        #   dimension 2: 10 elements
    movl    $9,-44132(%ebp)         #   dimension 3: 9 elements
    movl    $8,-44128(%ebp)         #   dimension 4: 8 elements
    movl    $5,-44124(%ebp)         #   dimension 5: 5 elements
    movl    $5,-44468(%ebp)         # local array 'v4': 5 dimensions
    movl    $5,-44464(%ebp)         #   dimension 1: 5 elements
    movl    $1,-44460(%ebp)         #   dimension 2: 1 elements
    movl    $3,-44456(%ebp)         #   dimension 3: 3 elements
    movl    $5,-44452(%ebp)         #   dimension 4: 5 elements
    movl    $4,-44448(%ebp)         #   dimension 5: 4 elements

    # function body
    movl    $1692, %eax             #   0:     param  0 <- 1692
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #   2:     if     100 < 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $64387, %eax            #   5:     if     64387 > 83138 goto 6_if_true
    movl    $83138, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    movl    $100, %eax              #   8:     assign v1 <- 100
    movb    %al, -29(%ebp)         
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1                  #  12:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  16:     goto   14_while_cond
    movl    $0, %eax                #  17:     return 0
    jmp     l_f2_exit              
    leal    -44468(%ebp), %eax      #  18:     &()    t8 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  2 <- t8
    pushl   %eax                   
    leal    -44144(%ebp), %eax      #  20:     &()    t9 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  1 <- t9
    pushl   %eax                   
    leal    -920(%ebp), %eax        #  22:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  24:     call   t11 <- f0
    addl    $12, %esp              
    movl    %eax, -20(%ebp)        
    jmp     l_f2_10                 #  25:     goto   10
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $44456, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    call    dummyINTfunc            #   2:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     mul    t1 <- t0, 83177
    movl    $83177, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t2 <- t1, 2633
    movl    $2633, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t3 <- t2, 8998
    movl    $8998, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     mul    t4 <- t3, 11810
    movl    $11810, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     mul    t5 <- t4, 45828
    movl    $45828, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     param  1 <- t5
    pushl   %eax                   
    movl    $99, %eax               #   9:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  10:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $0, %eax                #  14:     if     0 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #  15:     goto   7_if_false
l_test_6_if_true:
    call    dummyINTfunc            #  17:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    movl    $98, %eax               #  18:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_5                #  19:     goto   5
l_test_7_if_false:
l_test_5:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
