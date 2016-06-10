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
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 8 of <array 9 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 5 of <array 1 of <array 5 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 6 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $4314, %eax             #   5:     if     4314 < 80087 goto 6_while_body
    movl    $80087, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f0_exit              
l_f0_10_while_cond:
    movl    $98, %eax               #  12:     if     98 > 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_1_while_cond       #  17:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  19:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     return t6
    jmp     l_f0_exit              
l_f0_15_while_cond:
    call    ReadInt                 #  22:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     if     t7 <= 94901 goto 16_while_body
    movl    $94901, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_while_body     
    jmp     l_f0_14                 #  24:     goto   14
l_f0_16_while_body:
    movl    $28170, %eax            #  26:     if     28170 # 28976 goto 19_if_true
    movl    $28976, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  27:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  29:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_15_while_cond      #  32:     goto   15_while_cond
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 9 of <array 10 of <array 9 of <array 5 of <int>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v3       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $6295, %eax             #   2:     if     6295 # 32278 goto 5_if_true
    movl    $32278, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_8                  #   9:     goto   8
    jmp     l_f1_9_while_cond       #  10:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_12_while_cond:
    movl    $97, %eax               #  16:     if     97 >= 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_13_while_body     
    jmp     l_f1_11                 #  17:     goto   11
l_f1_13_while_body:
l_f1_16_while_cond:
    movl    $99, %eax               #  20:     if     99 > 98 goto 17_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_17_while_body     
    jmp     l_f1_15                 #  21:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  23:     goto   16_while_cond
l_f1_15:
    call    ReadInt                 #  25:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $16711, %eax            #  26:     if     16711 = 63510 goto 21
    movl    $63510, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_21                
    jmp     l_f1_22                 #  27:     goto   22
l_f1_21:
    movl    $1, %eax                #  29:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_23                 #  30:     goto   23
l_f1_22:
    movl    $0, %eax                #  32:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f1_23:
    movzbl  -21(%ebp), %eax         #  34:     assign v3 <- t8
    movb    %al, -22(%ebp)         
    jmp     l_f1_12_while_cond      #  35:     goto   12_while_cond
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 6 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 6 of <array 5 of <array 1 of <array 5 of <array 5 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 3 of <array 9 of <array 8 of <array 9 of <array 1 of <char>>>>>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 3 of <array 2 of <array 4 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 2 of <array 2 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -1996(%ebp)  1968  [ $v5       <array 3 of <array 9 of <array 8 of <array 9 of <array 1 of <char>>>>>> %ebp-1996 ]
    #   -5020(%ebp)  3024  [ $v6       <array 6 of <array 5 of <array 1 of <array 5 of <array 5 of <int>>>>>> %ebp-5020 ]
    #   -7732(%ebp)  2712  [ $v7       <array 8 of <array 2 of <array 7 of <array 6 of <array 4 of <bool>>>>>> %ebp-7732 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $7720, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1930, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1996(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-1992(%ebp)          #   dimension 1: 3 elements
    movl    $9,-1988(%ebp)          #   dimension 2: 9 elements
    movl    $8,-1984(%ebp)          #   dimension 3: 8 elements
    movl    $9,-1980(%ebp)          #   dimension 4: 9 elements
    movl    $1,-1976(%ebp)          #   dimension 5: 1 elements
    movl    $5,-5020(%ebp)          # local array 'v6': 5 dimensions
    movl    $6,-5016(%ebp)          #   dimension 1: 6 elements
    movl    $5,-5012(%ebp)          #   dimension 2: 5 elements
    movl    $1,-5008(%ebp)          #   dimension 3: 1 elements
    movl    $5,-5004(%ebp)          #   dimension 4: 5 elements
    movl    $5,-5000(%ebp)          #   dimension 5: 5 elements
    movl    $5,-7732(%ebp)          # local array 'v7': 5 dimensions
    movl    $8,-7728(%ebp)          #   dimension 1: 8 elements
    movl    $2,-7724(%ebp)          #   dimension 2: 2 elements
    movl    $7,-7720(%ebp)          #   dimension 3: 7 elements
    movl    $6,-7716(%ebp)          #   dimension 4: 6 elements
    movl    $4,-7712(%ebp)          #   dimension 5: 4 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $99, %eax               #   2:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #   5:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $36554, %eax            #   6:     param  3 <- 36554
    pushl   %eax                   
    leal    -7732(%ebp), %eax       #   7:     &()    t7 <- v7
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  2 <- t7
    pushl   %eax                   
    leal    -5020(%ebp), %eax       #   9:     &()    t8 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  1 <- t8
    pushl   %eax                   
    leal    -1996(%ebp), %eax       #  11:     &()    t9 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  13:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $7720, %esp             # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    movl    $85679, %eax            #   0:     add    t0 <- 85679, 2264
    movl    $2264, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 75599
    movl    $75599, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 # 83226 goto 4
    movl    $83226, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_4               
    jmp     l_test_5                #   3:     goto   5
l_test_4:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_6                #   6:     goto   6
l_test_5:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_6:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_0                #  11:     goto   0
l_test_0:
l_test_9_while_cond:
    movl    $46737, %eax            #  14:     mul    t3 <- 46737, 50507
    movl    $50507, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     div    t4 <- t3, 47039
    movl    $47039, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $73705, %eax            #  16:     if     73705 # t4 goto 10_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  17:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  19:     goto   9_while_cond
l_test_8:
    call    ReadInt                 #  21:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $99, %eax               #  22:     assign v1 <- 99
    movb    %al, v1                
l_test_18_while_cond:
    jmp     l_test_17               #  24:     goto   17
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            
    movl    $1, %eax                #  28:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_13               #  29:     goto   13
l_test_13:
    movl    $97133, %eax            #  31:     if     97133 > 73590 goto 26_if_true
    movl    $73590, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_26_if_true      
    jmp     l_test_27_if_false      #  32:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  34:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_exit            
l_test_31_while_cond:
    jmp     l_test_30               #  39:     goto   30
    jmp     l_test_31_while_cond    #  40:     goto   31_while_cond
l_test_30:
    jmp     l_test_33               #  42:     goto   33
l_test_33:
    jmp     l_test_22               #  44:     goto   22
l_test_22:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
