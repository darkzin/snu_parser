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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    movl    $48595, %eax            #   0:     assign v1 <- 48595
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #   1:     if     98 < 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #   2:     goto   7
l_f0_6:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   5:     goto   8
l_f0_7:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    movl    $28175, %eax            #  10:     return 28175
    jmp     l_f0_exit              
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  12:     goto   12_while_cond
    movl    $64612, %eax            #  13:     assign v1 <- 64612
    movl    %eax, -32(%ebp)        
    jmp     l_f0_0                  #  14:     goto   0
l_f0_0:
    movl    $16175, %eax            #  16:     add    t4 <- 16175, 45550
    movl    $45550, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     return t4
    jmp     l_f0_exit              
    call    ReadInt                 #  18:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     sub    t6 <- t5, 48743
    movl    $48743, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     return t6
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <char> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   1:     assign v0 <- 1
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   2:     assign v1 <- 99
    movb    %al, -18(%ebp)         

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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   4:     goto   2_while_cond
l_f2_1:
    movl    $17954, %eax            #   6:     if     17954 <= 36246 goto 6_if_true
    movl    $36246, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_exit              
    movl    $94595, %eax            #  10:     if     94595 >= 70944 goto 11_if_true
    movl    $70944, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  11:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_exit              
    jmp     l_f2_5                  #  17:     goto   5
l_f2_7_if_false:
l_f2_5:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 <= t0 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #  10:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  11:     call   t2 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  12:     assign v0 <- 1
    movb    %al, v0                

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

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
