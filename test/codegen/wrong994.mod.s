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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f0_5_while_cond:
    movl    $97, %eax               #   2:     if     97 <= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   7:     goto   0
l_f0_0:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #  10:     goto   11
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  13:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_18                 #  14:     goto   18
    jmp     l_f0_15                 #  15:     goto   15
l_f0_18:
    jmp     l_f0_16                 #  17:     goto   16
l_f0_15:
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_17                 #  20:     goto   17
l_f0_16:
    movl    $0, %eax                #  22:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_17:
    movzbl  -14(%ebp), %eax         #  24:     assign v1 <- t2
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 4 of <array 8 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    movl    $11795, %eax            #   2:     if     11795 = 59851 goto 5_while_body
    movl    $59851, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    movl    $1, %eax                #   7:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_8                  #   8:     goto   8
l_f1_8:
    movl    $14558, %eax            #  10:     if     14558 <= 29028 goto 12_if_true
    movl    $29028, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  11:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_16_while_cond:
    movl    $13354, %eax            #  20:     add    t1 <- 13354, 797
    movl    $797, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     sub    t2 <- t1, 28424
    movl    $28424, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t3 <- t2, 95766
    movl    $95766, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     sub    t4 <- t3, 53006
    movl    $53006, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     add    t5 <- t4, 47277
    movl    $47277, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     if     t5 <= 96640 goto 17_while_body
    movl    $96640, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_17_while_body     
    jmp     l_f1_15                 #  26:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  28:     goto   16_while_cond
l_f1_15:
    call    dummyCHARfunc           #  30:     call   t6 <- dummyCHARfunc
    movb    %al, -33(%ebp)         

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 10 of <array 5 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 4 of <array 9 of <array 7 of <array 7 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $82203, %eax            #   0:     assign v0 <- 82203
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $44041, %eax            #   3:     if     44041 >= 69114 goto 4_while_body
    movl    $69114, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    movl    $97, %eax               #  10:     assign v1 <- 97
    movb    %al, v1                
l_test_10_while_cond:
    jmp     l_test_15               #  12:     goto   15
    jmp     l_test_11_while_body    #  13:     goto   11_while_body
l_test_15:
    jmp     l_test_11_while_body    #  15:     goto   11_while_body
    jmp     l_test_11_while_body    #  16:     goto   11_while_body
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
