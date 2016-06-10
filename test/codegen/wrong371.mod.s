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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $96026, %eax            #   1:     if     96026 <= 60268 goto 4
    movl    $60268, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_6:
    movzbl  -15(%ebp), %eax         #   9:     return t7
    jmp     l_f0_exit              
    movl    $1, %eax                #  10:     return 1
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  11:     call   t8 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
l_f0_11_while_cond:
    movl    $2195, %eax             #  13:     if     2195 >= 30049 goto 12_while_body
    movl    $30049, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_0                  #  18:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $0, %eax                #  21:     assign v1 <- 0
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #  22:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  23:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_21_while_cond:
    jmp     l_f0_20                 #  25:     goto   20
    jmp     l_f0_21_while_cond      #  26:     goto   21_while_cond
l_f0_20:
    call    dummyProcedure          #  28:     call   dummyProcedure
    movl    $97, %eax               #  29:     if     97 > 97 goto 25
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_25                
    jmp     l_f0_26                 #  30:     goto   26
l_f0_25:
    movl    $1, %eax                #  32:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_27                 #  33:     goto   27
l_f0_26:
    movl    $0, %eax                #  35:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_27:
    movzbl  -14(%ebp), %eax         #  37:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_15                 #  38:     goto   15
l_f0_15:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 8 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -13(%ebp)   1  [ $v2       <bool> %ebp-13 ]

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
    movl    $1, %eax                #   0:     assign v2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $90354, %eax            #   2:     assign v1 <- 90354
    movl    %eax, 12(%ebp)         
    call    WriteLn                 #   3:     call   WriteLn
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   5:     goto   7_while_cond
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  10:     goto   10_while_cond

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 8 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 7 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 3 of <array 10 of <array 8 of <int>>>>>>> %ebp+16 ]
    #   -3500(%ebp)  3480  [ $v3       <array 6 of <array 3 of <array 4 of <array 8 of <array 6 of <bool>>>>>> %ebp-3500 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3488, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $872, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3500(%ebp)          # local array 'v3': 5 dimensions
    movl    $6,-3496(%ebp)          #   dimension 1: 6 elements
    movl    $3,-3492(%ebp)          #   dimension 2: 3 elements
    movl    $4,-3488(%ebp)          #   dimension 3: 4 elements
    movl    $8,-3484(%ebp)          #   dimension 4: 8 elements
    movl    $6,-3480(%ebp)          #   dimension 5: 6 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_9_if_true          #   5:     goto   9_if_true
    jmp     l_f2_10_if_false        #   6:     goto   10_if_false
l_f2_9_if_true:
    movl    $83693, %eax            #   8:     param  1 <- 83693
    pushl   %eax                   
    leal    -3500(%ebp), %eax       #   9:     &()    t7 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  11:     call   t8 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
l_f2_14_while_cond:
    movl    $97, %eax               #  13:     if     97 <= 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  14:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  16:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_17                 #  18:     goto   17
l_f2_17:
    jmp     l_f2_8                  #  20:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    dummyBOOLfunc           #  23:     call   t9 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  24:     if     t9 = 1 goto 21_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  25:     goto   22_if_false
l_f2_21_if_true:
    movl    $100, %eax              #  27:     if     100 < 99 goto 24_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  28:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  30:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_20                 #  33:     goto   20
l_f2_22_if_false:
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $3488, %esp             # remove locals
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
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
l_test_7_while_cond:
    movl    $66393, %eax            #   7:     add    t0 <- 66393, 51775
    movl    $51775, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     if     t0 <= 78044 goto 8_while_body
    movl    $78044, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #   9:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  11:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
    movl    $65841, %eax            #  14:     add    t1 <- 65841, 75777
    movl    $75777, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $15348, %eax            #  15:     add    t2 <- 15348, 50507
    movl    $50507, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t3 <- t2, 48400
    movl    $48400, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t4 <- t3, 38040
    movl    $38040, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t5 <- t4, 56404
    movl    $56404, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #  19:     if     t1 > t5 goto 12_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #  20:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  22:     goto   11_while_cond
l_test_10:
l_test_15_while_cond:
    jmp     l_test_17               #  25:     goto   17
l_test_17:
    call    dummyINTfunc            #  27:     call   t6 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_15_while_cond    #  29:     goto   15_while_cond

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
