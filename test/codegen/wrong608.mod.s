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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 8 of <array 2 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $49940, %eax            #   0:     div    t6 <- 49940, 21031
    movl    $21031, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     sub    t7 <- t6, 55522
    movl    $55522, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   2:     if     t7 >= 4054 goto 1
    movl    $4054, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -45(%ebp)         
l_f0_3:
    movzbl  -45(%ebp), %eax         #  10:     return t8
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $322, %eax              #  12:     add    t9 <- 322, 5173
    movl    $5173, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  13:     sub    t10 <- t9, 9908
    movl    $9908, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t11 <- t10, 35437
    movl    $35437, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $18981, %eax            #  15:     mul    t12 <- 18981, 47951
    movl    $47951, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     mul    t13 <- t12, 35577
    movl    $35577, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  17:     sub    t14 <- t11, t13
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     if     t14 = 13282 goto 7_while_body
    movl    $13282, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  19:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  21:     goto   6_while_cond
l_f0_5:
    movl    $14069, %eax            #  23:     sub    t15 <- 14069, 13020
    movl    $13020, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     assign v2 <- t15
    movl    %eax, 8(%ebp)          

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 8 of <array 2 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #   -1216(%ebp)  1176  [ $v3       <array 9 of <array 2 of <array 4 of <array 8 of <array 2 of <bool>>>>>> %ebp-1216 ]
    #   -1217(%ebp)   1  [ $v4       <char> %ebp-1217 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1208, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $302, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1216(%ebp)          # local array 'v3': 5 dimensions
    movl    $9,-1212(%ebp)          #   dimension 1: 9 elements
    movl    $2,-1208(%ebp)          #   dimension 2: 2 elements
    movl    $4,-1204(%ebp)          #   dimension 3: 4 elements
    movl    $8,-1200(%ebp)          #   dimension 4: 8 elements
    movl    $2,-1196(%ebp)          #   dimension 5: 2 elements

    # function body
    leal    -1216(%ebp), %eax       #   0:     &()    t6 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  1 <- t6
    pushl   %eax                   
    call    ReadInt                 #   2:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     mul    t8 <- t7, 90852
    movl    $90852, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     div    t9 <- t8, 74683
    movl    $74683, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     div    t10 <- t9, 11096
    movl    $11096, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     div    t11 <- t10, 49315
    movl    $49315, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #   8:     call   t12 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  10:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  11:     assign v4 <- t13
    movb    %al, -1217(%ebp)       

l_f1_exit:
    # epilogue
    addl    $1208, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 5 of <array 4 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 4 of <array 9 of <array 2 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 2 of <array 2 of <array 9 of <array 1 of <char>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    movl    $16650, %eax            #   2:     sub    t7 <- 16650, 46090
    movl    $46090, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t7 # 51666 goto 3_while_body
    movl    $51666, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $1, %eax                #   6:     if     1 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_8                  #  10:     goto   8
l_f2_7:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f2_8:
    movzbl  -21(%ebp), %eax         #  14:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  15:     call   f1
    addl    $4, %esp               
l_f2_11_while_cond:
    jmp     l_f2_10                 #  17:     goto   10
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_2_while_cond       #  20:     goto   2_while_cond
l_f2_1:
    movl    $34082, %eax            #  22:     if     34082 >= 79318 goto 14_if_true
    movl    $79318, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  23:     goto   15_if_false
l_f2_14_if_true:
l_f2_18_while_cond:
    jmp     l_f2_17                 #  26:     goto   17
    jmp     l_f2_18_while_cond      #  27:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_13                 #  29:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    movl    $57505, %eax            #   0:     mul    t0 <- 57505, 30963
    movl    $30963, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 28595
    movl    $28595, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 19011
    movl    $19011, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $13208, %eax            #   5:     sub    t3 <- 13208, 91427
    movl    $91427, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $68513, %eax            #   6:     if     68513 <= t3 goto 3_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   7:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    jmp     l_test_7_if_false       #  11:     goto   7_if_false
    jmp     l_test_7_if_false       #  12:     goto   7_if_false
    movl    $98, %eax               #  13:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #  15:     assign v1 <- 99
    movb    %al, v1                
l_test_13_while_cond:
    movl    $44102, %eax            #  17:     if     44102 >= 36089 goto 14_while_body
    movl    $36089, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  18:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  20:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            
    movl    $97, %eax               #  23:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_5                #  24:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyINTfunc            #  27:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
l_test_20_while_cond:
    jmp     l_test_19               #  29:     goto   19
    movl    $36392, %eax            #  30:     if     36392 <= 46578 goto 23_if_true
    movl    $46578, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_23_if_true      
    jmp     l_test_24_if_false      #  31:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  33:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $100, %eax              #  36:     assign v1 <- 100
    movb    %al, v1                
    movl    $84667, %eax            #  37:     assign v0 <- 84667
    movl    %eax, v0               
    jmp     l_test_20_while_cond    #  38:     goto   20_while_cond
l_test_19:
    call    ReadInt                 #  40:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
