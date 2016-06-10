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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 56 of <array 74 of <array 62 of <array 77 of <array 43 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 78 of <array 55 of <array 34 of <array 12 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 37 of <array 82 of <array 82 of <array 38 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #   1:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $68030, %eax            #   2:     add    t8 <- 68030, 67628
    movl    $67628, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t7 >= t8 goto 2
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f0_4:
    movzbl  -25(%ebp), %eax         #  11:     return t9
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  12:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_11_while_cond:
    jmp     l_f0_10                 #  14:     goto   10
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_13:
    movl    $0, %eax                #  19:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  20:     goto   6
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 26 of <array 98 of <array 73 of <array 45 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $3411, %eax             #   0:     sub    t6 <- 3411, 92677
    movl    $92677, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     sub    t7 <- t6, 34114
    movl    $34114, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     return t7
    jmp     l_f1_exit              
    movl    $26514, %eax            #   3:     mul    t8 <- 26514, 68162
    movl    $68162, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t9 <- t8, 61111
    movl    $61111, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t10 <- t9, 57430
    movl    $57430, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     sub    t11 <- t10, 26717
    movl    $26717, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t12 <- t11, 62970
    movl    $62970, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     return t12
    jmp     l_f1_exit              
    call    WriteLn                 #   9:     call   WriteLn

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 61 of <array 26 of <array 98 of <array 73 of <array 45 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <char> %ebp-21 ]
    #   -510581028(%ebp)  510581004  [ $v1       <array 61 of <array 26 of <array 98 of <array 73 of <array 45 of <char>>>>>> %ebp-510581028 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $510581016, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $127645254, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-510581028(%ebp)     # local array 'v1': 5 dimensions
    movl    $61,-510581024(%ebp)    #   dimension 1: 61 elements
    movl    $26,-510581020(%ebp)    #   dimension 2: 26 elements
    movl    $98,-510581016(%ebp)    #   dimension 3: 98 elements
    movl    $73,-510581012(%ebp)    #   dimension 4: 73 elements
    movl    $45,-510581008(%ebp)    #   dimension 5: 45 elements

    # function body
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, -21(%ebp)         
    jmp     l_f2_2_if_true          #   1:     goto   2_if_true
l_f2_2_if_true:
    jmp     l_f2_5                  #   3:     goto   5
l_f2_5:
    jmp     l_f2_1                  #   5:     goto   1
l_f2_1:
    movl    $1, %eax                #   7:     param  3 <- 1
    pushl   %eax                   
    movl    $96335, %eax            #   8:     param  2 <- 96335
    pushl   %eax                   
    leal    -510581028(%ebp), %eax  #   9:     &()    t6 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  1 <- t6
    pushl   %eax                   
    movl    $98, %eax               #  11:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #  12:     call   t7 <- f1
    addl    $16, %esp              
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $510581016, %esp        # remove locals
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
    movl    $76636, %eax            #   0:     sub    t0 <- 76636, 24876
    movl    $24876, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $77318, %eax            #   1:     if     77318 # t0 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
    movl    $76672, %eax            #  10:     div    t1 <- 76672, 74385
    movl    $74385, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t2 <- t1, 97016
    movl    $97016, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     div    t3 <- t2, 96354
    movl    $96354, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     mul    t4 <- t3, 7705
    movl    $7705, %ebx            
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t5 <- t4, 21909
    movl    $21909, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_7                #  17:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_12_if_true       #  20:     goto   12_if_true
    jmp     l_test_13_if_false      #  21:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_exit            
    jmp     l_test_11               #  24:     goto   11
l_test_13_if_false:
l_test_11:
l_test_17_while_cond:
    movl    $98, %eax               #  28:     if     98 <= 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_18_while_body   
    jmp     l_test_16               #  29:     goto   16
l_test_18_while_body:
    movl    $83899, %eax            #  31:     if     83899 >= 3492 goto 21_if_true
    movl    $3492, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_21_if_true      
    jmp     l_test_22_if_false      #  32:     goto   22_if_false
l_test_21_if_true:
l_test_25_while_cond:
    movl    $98, %eax               #  35:     if     98 >= 97 goto 26_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_26_while_body   
    jmp     l_test_24               #  36:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  38:     goto   25_while_cond
l_test_24:
    jmp     l_test_20               #  40:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_17_while_cond    #  43:     goto   17_while_cond
l_test_16:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
