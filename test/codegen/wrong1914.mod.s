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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 85 of <array 22 of <array 17 of <array 56 of <array 41 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 89 of <array 89 of <array 92 of <array 19 of <array 34 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $80622, %eax            #   1:     add    t5 <- 80622, 93922
    movl    $93922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $7411, %eax             #   2:     if     7411 > t5 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    call    ReadInt                 #   5:     call   t6 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $30916, %eax            #   8:     sub    t7 <- 30916, 25914
    movl    $25914, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     add    t8 <- t7, 86258
    movl    $86258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     sub    t9 <- t8, 95971
    movl    $95971, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     if     t9 # 65394 goto 6
    movl    $65394, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #  12:     goto   7
l_f0_6:
    movl    $1, %eax                #  14:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #  15:     goto   8
l_f0_7:
    movl    $0, %eax                #  17:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  19:     return t10
    jmp     l_f0_exit              
    call    ReadInt                 #  20:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $81512, %eax            #  21:     sub    t12 <- 81512, 15369
    movl    $15369, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     if     t11 > t12 goto 11_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  23:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  25:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 89 of <array 97 of <array 84 of <array 54 of <array 17 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $45941, %eax            #   0:     add    t5 <- 45941, 99730
    movl    $99730, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v4 <- t5
    movl    %eax, -20(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
l_f1_3_while_body:
    movl    $1, %eax                #   6:     assign v2 <- 1
    movb    %al, 16(%ebp)          
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 89 of <array 89 of <array 92 of <array 19 of <array 34 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 85 of <array 22 of <array 17 of <array 56 of <array 41 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -72989892(%ebp)  72989864  [ $v1       <array 85 of <array 22 of <array 17 of <array 56 of <array 41 of <bool>>>>>> %ebp-72989892 ]
    #   -543750788(%ebp)  470760896  [ $v2       <array 89 of <array 89 of <array 92 of <array 19 of <array 34 of <bool>>>>>> %ebp-543750788 ]
    #   -543750792(%ebp)   4  [ $v3       <int> %ebp-543750792 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $543750780, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $135937695, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-72989892(%ebp)      # local array 'v1': 5 dimensions
    movl    $85,-72989888(%ebp)     #   dimension 1: 85 elements
    movl    $22,-72989884(%ebp)     #   dimension 2: 22 elements
    movl    $17,-72989880(%ebp)     #   dimension 3: 17 elements
    movl    $56,-72989876(%ebp)     #   dimension 4: 56 elements
    movl    $41,-72989872(%ebp)     #   dimension 5: 41 elements
    movl    $5,-543750788(%ebp)     # local array 'v2': 5 dimensions
    movl    $89,-543750784(%ebp)    #   dimension 1: 89 elements
    movl    $89,-543750780(%ebp)    #   dimension 2: 89 elements
    movl    $92,-543750776(%ebp)    #   dimension 3: 92 elements
    movl    $19,-543750772(%ebp)    #   dimension 4: 19 elements
    movl    $34,-543750768(%ebp)    #   dimension 5: 34 elements

    # function body
    movl    $83589, %eax            #   0:     if     83589 <= 5179 goto 1_if_true
    movl    $5179, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $82485, %eax            #   3:     if     82485 > 15228 goto 5_if_true
    movl    $15228, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    movl    $99, %eax               #   6:     param  2 <- 99
    pushl   %eax                   
    leal    -543750788(%ebp), %eax  #   7:     &()    t5 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  1 <- t5
    pushl   %eax                   
    leal    -72989892(%ebp), %eax   #   9:     &()    t6 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  11:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
l_f2_10_while_cond:
    movl    $98, %eax               #  13:     if     98 > 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_11_while_body     
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  16:     goto   10_while_cond
l_f2_9:
    movl    $36716, %eax            #  18:     assign v3 <- 36716
    movl    %eax, -543750792(%ebp) 
    movl    $88176, %eax            #  19:     return 88176
    jmp     l_f2_exit              
    jmp     l_f2_4                  #  20:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #  23:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_16_while_cond:
    movl    $59677, %eax            #  27:     if     59677 <= 25364 goto 17_while_body
    movl    $25364, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_17_while_body     
    jmp     l_f2_15                 #  28:     goto   15
l_f2_17_while_body:
    movl    $1222, %eax             #  30:     assign v3 <- 1222
    movl    %eax, -543750792(%ebp) 
    jmp     l_f2_16_while_cond      #  31:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_22_if_false        #  33:     goto   22_if_false
    call    dummyINTfunc            #  34:     call   t8 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f2_20                 #  35:     goto   20
l_f2_22_if_false:
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $543750780, %esp        # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    jmp     l_test_exit            
    movl    $47347, %eax            #   1:     if     47347 <= 95663 goto 5
    movl    $95663, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   2:     goto   6
l_test_5:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   9:     if     t0 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #  10:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    call    ReadInt                 #  13:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $28742, %eax            #  17:     mul    t2 <- 28742, 83239
    movl    $83239, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     div    t3 <- t2, 79633
    movl    $79633, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t4 <- t3, 61162
    movl    $61162, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     assign v0 <- t4
    movl    %eax, v0               
l_test_13_while_cond:
    movl    $19192, %eax            #  22:     if     19192 < 3639 goto 14_while_body
    movl    $3639, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  23:     goto   12
l_test_14_while_body:
    movl    $99, %eax               #  25:     if     99 = 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  26:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  28:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_exit            
    jmp     l_test_13_while_cond    #  32:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
