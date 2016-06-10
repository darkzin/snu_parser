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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_5_while_cond:
    movl    $98, %eax               #   2:     if     98 = 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    movl    $8320, %eax             #   7:     assign v1 <- 8320
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #   8:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  12:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $37875, %eax            #  13:     if     37875 < 1533 goto 12_if_true
    movl    $1533, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
l_f0_12_if_true:
    movl    $28328, %eax            #  16:     if     28328 <= 14464 goto 16_if_true
    movl    $14464, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  17:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  19:     goto   15
l_f0_17_if_false:
l_f0_15:
l_f0_20_while_cond:
    jmp     l_f0_20_while_cond      #  23:     goto   20_while_cond
    movl    $97, %eax               #  24:     assign v2 <- 97
    movb    %al, -29(%ebp)         
    call    dummyProcedure          #  25:     call   dummyProcedure
l_f0_25_while_cond:
    movl    $59251, %eax            #  27:     if     59251 > 6534 goto 26_while_body
    movl    $6534, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_26_while_body     
    jmp     l_f0_24                 #  28:     goto   24
l_f0_26_while_body:
    jmp     l_f0_25_while_cond      #  30:     goto   25_while_cond
l_f0_24:
    movl    $98, %eax               #  32:     assign v2 <- 98
    movb    %al, -29(%ebp)         
    call    dummyBOOLfunc           #  33:     call   t8 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $12153, %eax            #  34:     if     12153 > 72400 goto 31
    movl    $72400, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_31                
    jmp     l_f0_32                 #  35:     goto   32
l_f0_31:
    movl    $1, %eax                #  37:     assign t9 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_33                 #  38:     goto   33
l_f0_32:
    movl    $0, %eax                #  40:     assign t9 <- 0
    movb    %al, -22(%ebp)         
l_f0_33:
    movzbl  -22(%ebp), %eax         #  42:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_11                 #  43:     goto   11
l_f0_13_if_false:
l_f0_11:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 8 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
l_f1_1_while_cond:
    movl    $78515, %eax            #   1:     if     78515 < 27049 goto 2_while_body
    movl    $27049, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $1, %eax                #   4:     assign v3 <- 1
    movb    %al, 16(%ebp)          
l_f1_6_while_cond:
    movl    $99, %eax               #   6:     if     99 <= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    movl    $92187, %eax            #  11:     assign v2 <- 92187
    movl    %eax, 12(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_10                 #  13:     goto   10
    jmp     l_f1_11_while_cond      #  14:     goto   11_while_cond
l_f1_10:
    movl    $7725, %eax             #  16:     assign v2 <- 7725
    movl    %eax, 12(%ebp)         
l_f1_15_while_cond:
    movl    $98, %eax               #  18:     if     98 > 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_16_while_body     
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_1_while_cond       #  23:     goto   1_while_cond
l_f1_0:
    movl    $82892, %eax            #  25:     div    t6 <- 82892, 43711
    movl    $43711, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  26:     add    t7 <- t6, 45241
    movl    $45241, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     assign v2 <- t7
    movl    %eax, 12(%ebp)         
    call    dummyCHARfunc           #  28:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 > t6 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    call    dummyProcedure          #   7:     call   dummyProcedure
    movl    $0, %eax                #   8:     if     0 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   9:     goto   7_if_false
l_f2_6_if_true:
    movl    $10315, %eax            #  11:     assign v2 <- 10315
    movl    %eax, -20(%ebp)        
    jmp     l_f2_10                 #  12:     goto   10
l_f2_10:
    movl    $0, %eax                #  14:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    movl    $35467, %eax            #  15:     assign v2 <- 35467
    movl    %eax, -20(%ebp)        
    jmp     l_f2_5                  #  16:     goto   5
l_f2_7_if_false:
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    movl    $46000, %eax            #   3:     mul    t0 <- 46000, 13996
    movl    $13996, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     if     t0 >= 18327 goto 5_while_body
    movl    $18327, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_5_while_body    
    jmp     l_test_3                #   5:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   7:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $1, %eax                #  12:     if     1 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_11               #  16:     goto   11
l_test_10:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_11:
    movzbl  -17(%ebp), %eax         #  20:     assign v0 <- t1
    movb    %al, v0                
l_test_14_while_cond:
    movl    $20229, %eax            #  22:     if     20229 <= 34801 goto 15_while_body
    movl    $34801, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15_while_body   
    jmp     l_test_13               #  23:     goto   13
l_test_15_while_body:
    jmp     l_test_exit            
    jmp     l_test_14_while_cond    #  26:     goto   14_while_cond
l_test_13:
    movl    $62761, %eax            #  28:     sub    t2 <- 62761, 623
    movl    $623, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     add    t3 <- t2, 12641
    movl    $12641, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t4 <- t3, 54284
    movl    $54284, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #  32:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  33:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  34:     assign v1 <- t5
    movb    %al, v1                

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
