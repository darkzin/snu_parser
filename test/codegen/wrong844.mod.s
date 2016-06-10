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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 10 of <array 5 of <array 9 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 2 of <array 9 of <array 5 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $20232, %eax            #   0:     if     20232 > 15010 goto 1_if_true
    movl    $15010, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   3:     assign v2 <- 98
    movb    %al, -15(%ebp)         
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   5:     goto   6_while_cond
    movl    $1, %eax                #   6:     return 1
    jmp     l_f0_exit              
    movl    $98, %eax               #   7:     if     98 # 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   8:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $99, %eax               #  13:     if     99 < 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  14:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  16:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_0                  #  19:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyProcedure          #  22:     call   dummyProcedure
    jmp     l_f0_20                 #  23:     goto   20
    call    dummyBOOLfunc           #  24:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  25:     if     t2 = 1 goto 19
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_19                
    jmp     l_f0_20                 #  26:     goto   20
l_f0_19:
    movl    $1, %eax                #  28:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_21                 #  29:     goto   21
l_f0_20:
    movl    $0, %eax                #  31:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_21:
    movzbl  -14(%ebp), %eax         #  33:     return t3
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $37979, %eax            #   1:     if     37979 < 78995 goto 2_while_body
    movl    $78995, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $43687, %eax            #   8:     mul    t4 <- 43687, 6881
    movl    $6881, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     mul    t5 <- t4, 51111
    movl    $51111, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     mul    t6 <- t5, 33773
    movl    $33773, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     mul    t7 <- t6, 86852
    movl    $86852, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     div    t8 <- t7, 95459
    movl    $95459, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  13:     mul    t9 <- t8, 26615
    movl    $26615, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  14:     if     t9 >= 24605 goto 7
    movl    $24605, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $1, %eax                #  17:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #  18:     goto   9
l_f1_8:
    movl    $0, %eax                #  20:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  22:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 2 of <array 9 of <array 5 of <array 4 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 10 of <array 5 of <array 9 of <array 6 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -108056(%ebp)  108024  [ $v2       <array 10 of <array 10 of <array 5 of <array 9 of <array 6 of <int>>>>>> %ebp-108056 ]
    #   -111320(%ebp)  3264  [ $v3       <array 9 of <array 2 of <array 9 of <array 5 of <array 4 of <bool>>>>>> %ebp-111320 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $111308, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27827, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-108056(%ebp)        # local array 'v2': 5 dimensions
    movl    $10,-108052(%ebp)       #   dimension 1: 10 elements
    movl    $10,-108048(%ebp)       #   dimension 2: 10 elements
    movl    $5,-108044(%ebp)        #   dimension 3: 5 elements
    movl    $9,-108040(%ebp)        #   dimension 4: 9 elements
    movl    $6,-108036(%ebp)        #   dimension 5: 6 elements
    movl    $5,-111320(%ebp)        # local array 'v3': 5 dimensions
    movl    $9,-111316(%ebp)        #   dimension 1: 9 elements
    movl    $2,-111312(%ebp)        #   dimension 2: 2 elements
    movl    $9,-111308(%ebp)        #   dimension 3: 9 elements
    movl    $5,-111304(%ebp)        #   dimension 4: 5 elements
    movl    $4,-111300(%ebp)        #   dimension 5: 4 elements

    # function body
    movl    $0, %eax                #   0:     if     0 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $79965, %eax            #   4:     if     79965 > 45790 goto 6_while_body
    movl    $45790, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    call    ReadInt                 #   9:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $64118, %eax            #  10:     if     64118 >= 36844 goto 10_if_true
    movl    $36844, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  13:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_0                  #  16:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    f1                      #  19:     call   t3 <- f1
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  20:     if     t3 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  21:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_16                 #  23:     goto   16
l_f2_16:
    jmp     l_f2_13                 #  25:     goto   13
l_f2_15_if_false:
l_f2_13:
l_f2_20_while_cond:
    leal    -111320(%ebp), %eax     #  29:     &()    t4 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     param  1 <- t4
    pushl   %eax                   
    leal    -108056(%ebp), %eax     #  31:     &()    t5 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  33:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  34:     if     t6 = 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_21_while_body     
    jmp     l_f2_19                 #  35:     goto   19
l_f2_21_while_body:
l_f2_23_while_cond:
    jmp     l_f2_22                 #  38:     goto   22
    jmp     l_f2_23_while_cond      #  39:     goto   23_while_cond
l_f2_22:
    jmp     l_f2_20_while_cond      #  41:     goto   20_while_cond
l_f2_19:

l_f2_exit:
    # epilogue
    addl    $111308, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyProcedure          #   8:     call   dummyProcedure
    call    dummyINTfunc            #   9:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_7_while_cond:
    jmp     l_test_8_while_body     #  11:     goto   8_while_body
    jmp     l_test_8_while_body     #  12:     goto   8_while_body
l_test_8_while_body:
l_test_12_while_cond:
    movl    $98, %eax               #  15:     if     98 = 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  16:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  18:     goto   12_while_cond
l_test_11:
    jmp     l_test_7_while_cond     #  20:     goto   7_while_cond

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
